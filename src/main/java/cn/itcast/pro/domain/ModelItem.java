package cn.itcast.pro.domain;

import javax.persistence.*;

/**
 * Created by yst on 2017/7/23.
 */
@Entity
@Table(name = "t_model_item")
public class ModelItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer pid;
    private String title;
    private String content;
    private Integer status;
    private Integer courseorder;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getCourseorder() {
        return courseorder;
    }

    public void setCourseorder(Integer courseorder) {
        this.courseorder = courseorder;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "ModelItem{" +
                "content='" + content + '\'' +
                ", id=" + id +
                ", pid=" + pid +
                ", title='" + title + '\'' +
                ", status=" + status +
                ", courseorder=" + courseorder +
                '}';
    }
}
