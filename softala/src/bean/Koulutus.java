package bean;

import java.util.Date;

public class Koulutus {
	
	private int koulutus_id;
	private String pvm;
	private String alkamisaika;
	private String paattymisaika;
	private int paikka_id;
	private String aihe;
	private String kuvaus;
	private int opettaja_id;
	
	
	
	public Koulutus() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Koulutus(int koulutus_id, String pvm, String alkamisaika,
			String paattymisaika, int paikka_id, String aihe, String kuvaus,
			int opettaja_id) {
		super();
		this.koulutus_id = koulutus_id;
		this.pvm = pvm;
		this.alkamisaika = alkamisaika;
		this.paattymisaika = paattymisaika;
		this.paikka_id = paikka_id;
		this.aihe = aihe;
		this.kuvaus = kuvaus;
		this.opettaja_id = opettaja_id;
	}

	public Koulutus(String alkamisaika, String paattymisaika, int paikka_id,
			String aihe, int opettaja_id) {
		super();
		this.alkamisaika = alkamisaika;
		this.paattymisaika = paattymisaika;
		this.paikka_id = paikka_id;
		this.aihe = aihe;
		this.opettaja_id = opettaja_id;
	}


	public int getKoulutus_id() {
		return koulutus_id;
	}


	public void setKoulutus_id(int koulutus_id) {
		this.koulutus_id = koulutus_id;
	}


	public String getPvm() {
		return pvm;
	}


	public void setPvm(String pvm) {
		this.pvm = pvm;
	}


	public String getAlkamisaika() {
		return alkamisaika;
	}


	public void setAlkamisaika(String alkamisaika) {
		this.alkamisaika = alkamisaika;
	}


	public String getPaattymisaika() {
		return paattymisaika;
	}


	public void setPaattymisaika(String paattymisaika) {
		this.paattymisaika = paattymisaika;
	}


	public int getPaikka() {
		return paikka_id;
	}


	public void setPaikka(int paikka_id) {
		this.paikka_id = paikka_id;
	}


	public String getAihe() {
		return aihe;
	}


	public void setAihe(String aihe) {
		this.aihe = aihe;
	}


	public String getKuvaus() {
		return kuvaus;
	}


	public void setKuvaus(String kuvaus) {
		this.kuvaus = kuvaus;
	}


	public int getOpettaja() {
		return opettaja_id;
	}


	public void setOpettaja(int opettaja_id) {
		this.opettaja_id = opettaja_id;
	}


	@Override
	public String toString() {
		return "Koulutus [koulutus_id=" + koulutus_id + ", pvm=" + pvm
				+ ", alkamisaika=" + alkamisaika + ", paattymisaika="
				+ paattymisaika + ", paikka_id=" + paikka_id + ", aihe=" + aihe
				+ ", kuvaus=" + kuvaus + ", opettaja=" + opettaja_id + "]";
	}
	
	
}
