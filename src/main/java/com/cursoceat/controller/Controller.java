package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.lang.model.element.NestingKind;

import org.eclipse.jdt.internal.compiler.IDebugRequestor;
import org.eclipse.jdt.internal.compiler.env.IRecordComponent;

import com.cursoceat.modell.Autorizados;
import com.cursoceat.modell.Nino;
import com.cursoceat.modell.Tutores;
import com.oracle.wls.shaded.org.apache.bcel.generic.I2F;
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
		/**
		 * Datos del Nino
		 */
		String nombreNino=request.getParameter("nombre"); //los valores vienen del jsp y almacena del name="nombre" su valor
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
		/**
		 * Datos del Tutor 1
		 */
		String nombreTutor1=request.getParameter("nombreApellidoT1");
		String dniT1=request.getParameter("dniT1");
		String profesionT1=request.getParameter("profesionT1");
		//Ejemplo de un casting a entero
		//int telefono=Integer.parseInt(request.getParameter("telefonoT1"));
		String telefonoT1=request.getParameter("telefonoT1");
		String emailT1=request.getParameter("emailT1");
		String parentesco=request.getParameter("parentesco");
	
		/**
		 * Datos de todos los autorizados
		 */
	
		String autor1=request.getParameter("autor1");
		String dniAuto1=request.getParameter("dniAuto1");
		String telefonoAuto1=request.getParameter("telefonoAuto1");
		String parentAuto1=request.getParameter("parentAuto1");
		String errorT="";
			
		//validar fnacimiento
		//validar dni
		
		if (nombreNino.isEmpty() || apellidosNino.isEmpty() || fNacimiento.isEmpty() || direccionN.isEmpty() 
				|| poblacionN.isEmpty() || cpN.isEmpty() || nombreTutor1.isEmpty() ||
				dniT1.isEmpty() || telefonoT1.isEmpty() || parentesco.isEmpty() || autor1.isEmpty() || dniAuto1.isEmpty() 
				|| telefonoAuto1.isEmpty() || parentAuto1.isEmpty() || !validarTel(telefonoT1) ) {
			String errorE="Hay errores en el formulario o hay campos vacios";
			request.setAttribute("error", errorE); //no se envia hasta que se despache
			request.getRequestDispatcher("index.jsp").forward(request, response);//no se muestra si tengo quien lo muestre
			
		}else {		
			request.setAttribute("apellidos", apellidosNino);
			request.getRequestDispatcher("confirmar.jsp").forward(request, response);
			
			/**
			 * aqui falta  validar que la sesion se cree cuando se pulse todo correcto
			 */
				List<Nino> miNiList=new ArrayList<Nino>(); 
				List<Tutores> tutoList=new ArrayList<Tutores>();
				List<Autorizados> autoList=new ArrayList<Autorizados>();
				
				Nino miNino=new Nino(nombreNino, apellidosNino, direccionN, poblacionN, cpN, fNacimiento, 
						alergia, alergiaAli, intolerancia, medicacion, observaciones);
				//crear la coleccion de niños en alta
				miNiList.add(miNino);
				int idNino=miNino.getIdNino();
				System.out.println("id niño: " + idNino);
				Tutores elTutor=new Tutores(idNino,nombreTutor1,dniT1,telefonoT1,profesionT1,emailT1,parentesco);
				tutoList.add(elTutor);
				Autorizados auto1=new Autorizados(idNino, autor1, dniAuto1,telefonoAuto1,parentAuto1);
				autoList.add(auto1);
				/**
				 * Datos del Tutor 2
				 */
				String nombreTutor2=request.getParameter("nombreApellidoT2");
				if (!nombreTutor2.isEmpty()) {		
				String dniT2=request.getParameter("dniT2");
				String profesionT2=request.getParameter("profesionT2");
				String telefonoT2=request.getParameter("telefonoT2");
				String emailT2=request.getParameter("emailT2");
				String parentesco2=request.getParameter("parentesco2");
				Tutores tutor2 = new Tutores( idNino, nombreTutor2,dniT2,profesionT2,telefonoT2,emailT2,parentesco2);
				tutoList.add(tutor2);
				}
			
				String autor2=request.getParameter("autor2");			
				if (!autor2.isEmpty()) {
					String dniAuto2=request.getParameter("dniAuto2");
					String telefonoAuto2=request.getParameter("telefonoAuto2");
					String parentAuto2=request.getParameter("parentAuto2");
					Autorizados auto2=new Autorizados(idNino, autor2, dniAuto2,telefonoAuto2,parentAuto2);
					autoList.add(auto2);
				}
				
				String autor3=request.getParameter("autor3");
				if (!autor3.isEmpty()) {
					String dniAuto3=request.getParameter("dniAuto3");
					String telefonoAuto3=request.getParameter("telefonoAuto3");
					String parentAuto3=request.getParameter("parentAuto3");
					Autorizados auto3=new Autorizados(idNino, autor3, dniAuto3,telefonoAuto3,parentAuto3);
					autoList.add(auto3);
				}			 
				
				
				//System.out.println(elTutor.toString());
				
				
				//sesiones para poder recuperar a información dentro de la aplicacion
				
				HttpSession sesion=request.getSession(); //crea el objeto tipo sesion
				System.out.println(sesion.getId());// mostraer el id de la sesion
				request.getSession().setAttribute("idNino", idNino);
				request.getSession().setAttribute("nombreN", nombreNino);
		       
				
				
			
		}
	}

	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

    public boolean validarTel(String tele) {
		
		if ((!tele.startsWith("9") && !tele.startsWith("6") && !tele.startsWith("7") ) || tele.length()!=9 )	{
			System.out.println(false);
		return false;	
		}else {
			System.out.println(true);
		return true;
		}
	}
}
