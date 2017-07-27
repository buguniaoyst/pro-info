package cn.itcast.pro.domain;

import javax.persistence.*;

/**
 * Created by yst on 2017/7/20.
 */
@Entity
@Table(name = "t_proinfo")
public class Proinfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String classname;
    private  String name;
    private Integer day1=0;
    private Integer day2=0;
    private Integer day3=0;
    private Integer day4=0;
    private Integer day5=0;
    private Integer day6=0;
    private Integer day7=0;
    private Integer day8=0;
    private Integer day9=0;
    private Integer day10=0;
    private Integer day11=0;
    private Integer day12=0;
    private Integer day13=0;
    private Integer day14=0;
    private Integer day15=0;
    private Integer day16=0;
    private Integer day17=0;
    private Integer day18=0;
    private Integer day19=0;
    private Integer day20=0;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDay1() {
        return day1;
    }

    public void setDay1(Integer day1) {
        this.day1 = day1;
    }

    public Integer getDay2() {
        return day2;
    }

    public void setDay2(Integer day2) {
        this.day2 = day2;
    }

    public Integer getDay3() {
        return day3;
    }

    public void setDay3(Integer day3) {
        this.day3 = day3;
    }

    public Integer getDay4() {
        return day4;
    }

    public void setDay4(Integer day4) {
        this.day4 = day4;
    }

    public Integer getDay5() {
        return day5;
    }

    public void setDay5(Integer day5) {
        this.day5 = day5;
    }

    public Integer getDay6() {
        return day6;
    }

    public void setDay6(Integer day6) {
        this.day6 = day6;
    }

    public Integer getDay7() {
        return day7;
    }

    public void setDay7(Integer day7) {
        this.day7 = day7;
    }

    public Integer getDay8() {
        return day8;
    }

    public void setDay8(Integer day8) {
        this.day8 = day8;
    }

    public Integer getDay9() {
        return day9;
    }

    public void setDay9(Integer day9) {
        this.day9 = day9;
    }

    public Integer getDay10() {
        return day10;
    }

    public void setDay10(Integer day10) {
        this.day10 = day10;
    }

    public Integer getDay11() {
        return day11;
    }

    public void setDay11(Integer day11) {
        this.day11 = day11;
    }

    public Integer getDay12() {
        return day12;
    }

    public void setDay12(Integer day12) {
        this.day12 = day12;
    }

    public Integer getDay13() {
        return day13;
    }

    public void setDay13(Integer day13) {
        this.day13 = day13;
    }

    public Integer getDay14() {
        return day14;
    }

    public void setDay14(Integer day14) {
        this.day14 = day14;
    }

    public Integer getDay15() {
        return day15;
    }

    public void setDay15(Integer day15) {
        this.day15 = day15;
    }

    public Integer getDay16() {
        return day16;
    }

    public void setDay16(Integer day16) {
        this.day16 = day16;
    }

    public Integer getDay17() {
        return day17;
    }

    public void setDay17(Integer day17) {
        this.day17 = day17;
    }

    public Integer getDay18() {
        return day18;
    }

    public void setDay18(Integer day18) {
        this.day18 = day18;
    }

    public Integer getDay19() {
        return day19;
    }

    public void setDay19(Integer day19) {
        this.day19 = day19;
    }

    public Integer getDay20() {
        return day20;
    }

    public void setDay20(Integer day20) {
        this.day20 = day20;
    }

    @Override
    public String toString() {
        return "Proinfo{" +
                "id=" + id +
                ", classname='" + classname + '\'' +
                ", name='" + name + '\'' +
                ", day1=" + day1 +
                ", day2=" + day2 +
                ", day3=" + day3 +
                ", day4=" + day4 +
                ", day5=" + day5 +
                ", day6=" + day6 +
                ", day7=" + day7 +
                ", day8=" + day8 +
                ", day9=" + day9 +
                ", day10=" + day10 +
                ", day11=" + day11 +
                ", day12=" + day12 +
                ", day13=" + day13 +
                ", day14=" + day14 +
                ", day15=" + day15 +
                ", day16=" + day16 +
                ", day17=" + day17 +
                ", day18=" + day18 +
                ", day19=" + day19 +
                ", day20=" + day20 +
                '}';
    }
}
