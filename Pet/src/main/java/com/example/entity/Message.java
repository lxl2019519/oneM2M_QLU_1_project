package com.example.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;


@Data
@TableName("t_message")
public class Message extends Model<Message> {
    /**
      * 主键
     * Primary key
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 内容
     * Operation content
      */
    private String content;

    /**
      * 评论人
     * username
      */
    private String username;

    /**
      * 评论时间
     * Comment time
      */
    private String time;

    /**
      * 父ID
     * parentId
      */
    private Long parentId;

    @TableField(exist = false)
    private Message parentMessage;

    /**
     * 关联id
     * Association id
     */
    private Long foreignId;
    @TableField(exist = false)
    private String avatar;


}
