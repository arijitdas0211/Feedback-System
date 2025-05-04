package com.feedback;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Feedback() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String feedback = request.getParameter("msg");
		
		response.setStatus(200);
		response.setContentType("text/html");
		
		PrintWriter output = response.getWriter();
		if (name != null && !name.isEmpty() &&
		    phone != null && phone.matches("\\d{10}") &&
		    email != null && !email.isEmpty() &&
		    feedback != null && !feedback.isEmpty()) {

			output.println("<h2>User Feedback: </h2>");
			output.println("<h4>Name: </h4>"+name);
			output.println("<h4>Phone: </h4>"+phone);
			output.println("<h4>Email: </h4>"+email);
			output.println("<h4>Feedback Message: </h4>"+feedback);
			
//			Set Value
			request.setAttribute("name", name);
			request.setAttribute("phone", phone);
			request.setAttribute("email", email);
			request.setAttribute("feedback", feedback);
			
//			Console Print
			System.out.println("Feedback submitted.");
			System.out.println("Name: "+name);
			System.out.println("Phone: "+phone);
			System.out.println("Email: "+email);
			System.out.println("Feedback Message: "+feedback);
			
			
			request.getRequestDispatcher("feedback.jsp").forward(request, response);

		} else {
			output.println("<h4>All fields are mandatory and phone number must be length of 10 digits.</h4>");
			System.out.println("All fields are required!!");
		}
				
	}

}
