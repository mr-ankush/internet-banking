package model;
import java.io.InputStream;
public class Image 
{
    String acc_no;
    InputStream photo, adhar;

    public String getAcc_no() {
        return acc_no;
    }

    public void setAcc_no(String acc_no) {
        this.acc_no = acc_no;
    }

    public InputStream getPhoto() {
        return photo;
    }

    public void setPhoto(InputStream photo) {
        this.photo = photo;
    }

    public InputStream getAdhar() {
        return adhar;
    }

    public void setAdhar(InputStream adhar) {
        this.adhar = adhar;
    }
    
}
