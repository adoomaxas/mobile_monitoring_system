package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.OffsetDateTime;

@Entity
@Table(name = "tree_node")
@Getter
@Setter
public class TreeNodeModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @Column(name = "tree_id", nullable = false)
    private Short treeId;

    @Column(name = "type_id", nullable = false)
    private Short typeId = 2;

    @Column(name = "path_name")
    private String pathName;

    @Column(name = "kd_name")
    private String kdName;

    @Column(name = "parent_id")
    private Integer parentId;

    @Column(name = "device_id")
    private Integer deviceId;

    @Column(name = "query_id")
    private Short queryId;

    @Column(name = "sort_num", nullable = false)
    private Integer sortNum;

    @Column(name = "icon_id")
    private Short iconId;

    private Boolean deleted = false;

    @Column(name = "creation_date")
    private OffsetDateTime creationDate;

    @Column(name = "creation_user")
    private String creationUser;

    @Column(name = "del_date")
    private OffsetDateTime delDate;

    @Column(name = "del_user")
    private String delUser;
}
