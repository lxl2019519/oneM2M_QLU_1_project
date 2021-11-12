package com.example.entity;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@Data
@TableName("t_notice")
public class Notice extends Model<Notice> {
    /**
      * 主键
     * Primary key
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 标题
     * title
      */
    private String title;

    /**
      * 内容
     * content
      */
    private String content;

    /**
      * 发布时间
     * release time
      */
    private String time;

}