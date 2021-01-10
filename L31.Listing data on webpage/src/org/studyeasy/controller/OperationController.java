package org.studyeasy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.studyeasy.entity.User;
import org.studyeasy.model.UsersModel;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/operation")
public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		case "listusers":
			listUsers(request, response);
			break;

		case "adduser":
			addUserFormLoader(request, response);
			break;
			
		case "updateuser":
			updateUserFormLoader(request, response);
			break;
		
		case "deleteuser":
			deleteUser(Integer.parseInt(request.getParameter("usersId")));
			listUsers(request, response);
			break;
			
		default:
			errorPage(request, response);
			break;

		}
	}
	
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String operation = request.getParameter("form");
			operation = operation.toLowerCase();
			
			switch(operation) {
			case "adduseroperation":
				User newUser = new User(request.getParameter("username"), request.getParameter("email"));
				addUserOperation(newUser);
				listUsers(request, response);
				break;
			case "updateuseroperation":
				User updatedUser = new User(Integer.parseInt(request.getParameter("usersId")), request.getParameter("username"), request.getParameter("email"));
				updateUserOperation(dataSource, updatedUser);
				listUsers(request, response);
				break;
			default:
				errorPage(request, response);
				break;
			
			}
		}

	private void addUserOperation(User newUser) {
		new UsersModel().addUser(dataSource, newUser);
		return;
	}
	
	private void updateUserOperation(DataSource dataSource2, User updatedUser) {
		new UsersModel().updateUser(dataSource, updatedUser);
		return;
	}
	
	private void deleteUser(int usersId) {
		new UsersModel().deleteUser(dataSource, usersId);
		return;
	}
	
	public void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> listUsers = new ArrayList<>();
		listUsers = new UsersModel().listUsers(dataSource);
		request.setAttribute("listUsers", listUsers);
		request.setAttribute("title", "List of Users");

		request.getRequestDispatcher("listUser.jsp").forward(request, response);
	}

	public void addUserFormLoader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Add User");
		request.getRequestDispatcher("addUser.jsp").forward(request, response);

	}
	
	public void updateUserFormLoader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Update User");
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);
		
	}

	public void homePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Homepage");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	public void errorPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Error page");
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}

}
