package com.whisper.entity;

public class Goods {
    public String name,content;
    public Double price,capacity;

    public Goods(String name, String content, Double price, Double capacity) {
        this.name = name;
        this.content = content;
        this.price = price;
        this.capacity = capacity;
    }

    public Goods() {
    }

    @Override
    public String toString() {
        return "Good{" +
                "name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", price=" + price +
                ", capacity=" + capacity +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getCapacity() {
        return capacity;
    }

    public void setCapacity(Double capacity) {
        this.capacity = capacity;
    }
}
