package com.nxttech;

import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseCredentials;

/**
 * Servlet implementation class CreateRoomServlet
 */
public class CreateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FileInputStream serviceAccount = new FileInputStream("C:\\Users\\Glenn\\Downloads\\nxttech-teamtation-firebase-adminsdk-7y4x7-acd1d221d2.json");

		FirebaseOptions options = new FirebaseOptions.Builder()
		  .setCredential(FirebaseCredentials.fromCertificate(serviceAccount))
		  .setDatabaseUrl("https://nxttech-teamtation.firebaseio.com/")
		  .build();

		FirebaseApp.initializeApp(options);
		
		
	}

}
