package com.cursoceat.modell;

public class Tutores extends DatosGenerales{

		private String profesion;
		private String email;
		private String parentesco;
		
		public Tutores(int idNino, String nombreApellidos, String dni, String telefono, String profesion,
				String email, String parentesco) {
			super(idNino, nombreApellidos, dni, telefono);
			this.profesion = profesion;
			this.parentesco=parentesco;
			this.email = email;
		}

	
		public Tutores() {
			super();
		}
	
		public String getProfesion() {
			return profesion;
		}

		public void setProfesion(String profesion) {
			this.profesion = profesion;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		
		public String getParentesco() {
			return parentesco;
		}


		public void setParentesco(String parentesco) {
			this.parentesco = parentesco;
		}


		@Override
		public String toString() {
			return super.toString()+"Tutores [profesion=" + profesion + ", email=" + email + ", parentesco=" + parentesco + "]";
		}

		
		
}
