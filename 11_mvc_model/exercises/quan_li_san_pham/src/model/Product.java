package model;

public class Product {
    private int id;
    private String name;
    private String cost;
    private String nsx;

    public Product() {
    }

    public Product(int id, String name, String cost, String nsx) {
        this.id = id;
        this.name = name;
        this.cost = cost;
        this.nsx = nsx;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getNsx() {
        return nsx;
    }

    public void setNsx(String nsx) {
        this.nsx = nsx;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cost='" + cost + '\'' +
                ", nsx='" + nsx + '\'' +
                '}';
    }
}
