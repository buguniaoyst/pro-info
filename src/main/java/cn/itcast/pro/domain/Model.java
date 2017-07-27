package cn.itcast.pro.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by yst on 2017/7/23.
 */
@Entity
@Table(name = "t_model")
public class Model {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; //模板id
    private String name; //模板名称
    private Integer status; //模板状态
    private List<ModelItem> modelItems ;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<ModelItem> getModelItems() {
        return modelItems;
    }

    public void setModelItems(List<ModelItem> modelItems) {
        this.modelItems = modelItems;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Model{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", modelItems=" + modelItems +
                '}';
    }
}
