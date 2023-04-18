package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.cursoceat.modell.Nino;
import com.cursoceat.modell.Tutores;
import com.oracle.wls.shaded.org.apache.xml.utils.SystemIDResolver;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombreNino=request.getParameter("nombre");
		String apellidosNino=request.getParameter("apellidos");
		String fNacimiento=request.getParameter("fechaNacimiento");
		String direccionN=request.getParameter("direccion");
		String poblacionN=request.getParameter("poblacion");
		String cpN=request.getParameter("cp");
		String alergia=request.getParameter("alergias");
		String alergiaAli=request.getParameter("AlergiaAlim");
		String intolerancia=request.getParameter("intolerancias");
		String medicacion=request.getParameter("medicacion");
		String observaciones=request.getParameter("observaciones");
		String nombreTutor1=request.getParameter("nombreApellidoT1");
		String dniT1=request.getParameter("dniT1");
		String profesionT1=request.getParameter("profesionT1");
		//Ejemplo de un casting a entero
		//int telefono=Integer.parseInt(request.getParameter("telefonoT1"));
		String telefonoT1=request.getParameter("telefonoT1");
		String emailT1=request.getParameter("emailT1");
		String parentesco=request.getParameter("parentesco");
		
		
		// leer todos los datos del formulario
		//crear mis objetos -> clases
		
		
		if (nombreNino.isEmpty() || apellidosNino.isEmpty() || fNacimiento.isEmpty() || direccionN.isEmpty() 
				|| poblacionN.isEmpty() || cpN.isEmpty() || nombreTutor1.isEmpty() ||
				dniT1.isEmpty() || telefonoT1.isEmpty() || parentesco.isEmpty()) {
			String error="Los campos requeridos son obligatorios";
			request.setAttribute("error", error); //no se envia hasta que se despache
			request.getRequestDispatcher("index.jsp").forward(request, response);//no se muestra si tengo quien lo muestre
			
		}else {		
			request.getRequestDispatcher("confirmar.jsp").forward(request, response);
			Nino miNino=new Nino(nombreNino, apellidosNino, direccionN, poblacionN, cpN, fNacimiento, 
					alergia, alergiaAli, intolerancia, medicacion, observaciones);
			int idNino=miNino.getIdNino();
			Tutores elTutor=new Tutores(idNino,nombreTutor1,dniT1,telefonoT1,profesionT1,emailT1,parentesco);
			System.out.println(elTutor.toString());
			//
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
