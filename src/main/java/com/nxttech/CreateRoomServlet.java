package com.nxttech;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseCredentials;
import com.google.firebase.database.FirebaseDatabase;


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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InputStream serviceAccount = this.getClass()
		          .getResourceAsStream("/nxttech-teamtation-firebase-adminsdk-7y4x7-b28448808e.json");
		
		
		
				FirebaseOptions options = new FirebaseOptions.Builder()
				  .setCredential(FirebaseCredentials.applicationDefault())
				  .setDatabaseUrl("https://nxttech-teamtation.firebaseio.com")
				  .build();

				FirebaseApp.initializeApp(options);
				
				 FirebaseDatabase database = FirebaseDatabase.getInstance();

				// Initialize the default app
				 FirebaseApp defaultApp = FirebaseApp.initializeApp(options);

				 System.out.println(defaultApp.getName());  // "[DEFAULT]"

				 // Retrieve services by passing the defaultApp variable...
				 FirebaseAuth defaultAuth = FirebaseAuth.getInstance(defaultApp);
				 FirebaseDatabase defaultDatabase = FirebaseDatabase.getInstance(defaultApp);
				
		RequestDispatcher rd = request.getRequestDispatcher("step2LoginSpotify.jsp");
		rd.forward(request, response);

	}

}