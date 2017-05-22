/*
 * Decompiled with CFR 0_114.
 */
package modal;

public class AddInvestment {
    private int Serial_No;
    private String date;
    private String purpose;
    private String name;
    private Double amount;

    public String getDate() {
        return this.date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPurpose() {
        return this.purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getAmount() {
        return this.amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public void setSerial_No(int serial_No) {
        this.Serial_No = serial_No;
    }

    public int getSerial_No() {
        return this.Serial_No;
    }
}
