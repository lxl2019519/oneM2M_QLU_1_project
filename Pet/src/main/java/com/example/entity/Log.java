package com.example.entity;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;


@Data
@TableName("t_log")
public class Log extends Model<Log> {
    /**
      * 主键
     *  Primary key
      */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
      * 操作内容
     * Operation content
      */
    private String content;

    /**
      * 操作时间
     * Operating time
      */
    private String time;

    /**
      * 操作人
     * Operator
      */
    private String user;

    private String ip;

}
