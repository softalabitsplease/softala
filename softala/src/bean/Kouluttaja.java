package bean;

public class Kouluttaja {

	private int kouluttaja_id;
	private String etunimi;
	private String sukunimi;
	private int puhNro;
	private String email;
	private String lisatiedot;
	
	public Kouluttaja() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Kouluttaja(int kouluttaja_id, String etunimi, String sukunimi,
			int puhNro, String email, String lisatiedot) {
		super();
		this.kouluttaja_id = kouluttaja_id;
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		this.puhNro = puhNro;
		this.email = email;
		this.lisatiedot = lisatiedot;
	}
	public int getKouluttaja_id() {
		return kouluttaja_id;
	}
	public void setKouluttaja_id(int kouluttaja_id) {
		this.kouluttaja_id = kouluttaja_id;
	}
	public String getEtunimi() {
		return etunimi;
	}
	public void setEtunimi(String etunimi) {
		this.etunimi = etunimi;
	}
	public String getSukunimi() {
		return sukunimi;
	}
	public void setSukunimi(String sukunimi) {
		this.sukunimi = sukunimi;
	}
	public int getPuhNro() {
		return puhNro;
	}
	public void setPuhNro(int puhNro) {
		this.puhNro = puhNro;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLisatiedot() {
		return lisatiedot;
	}
	public void setLisatiedot(String lisatiedot) {
		this.lisatiedot = lisatiedot;
	}
	@Override
	public String toString() {
		return "Kouluttaja [kouluttaja_id=" + kouluttaja_id + ", etunimi="
				+ etunimi + ", sukunimi=" + sukunimi + ", puhNro=" + puhNro
				+ ", email=" + email + ", lisatiedot=" + lisatiedot + "]";
	}
	
	
}
