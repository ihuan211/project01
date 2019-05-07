package com.template.mapper;

import com.template.bean.Person;
import com.template.bean.PersonCriteria;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonMapper {
    /**
     * 根据条件计数
     *
     * @param example
     */
    int countByExample(PersonCriteria example);

    /**
     *
     * @param example
     */
    int deleteByExample(PersonCriteria example);

    /**
     * 根据主键删除数据库的记录
     *
     * @param tid
     */
    int deleteByPrimaryKey(String tid);

    /**
     * 插入数据库记录
     *
     * @param record
     */
    int insert(Person record);

    /**
     * 插入数据库记录
     *
     * @param record
     */
    int insertSelective(Person record);

    /**
     * 根据条件查询列表
     *
     * @param example
     */
    List<Person> selectByExample(PersonCriteria example);

    /**
     * 根据主键获取一条数据库记录
     *
     * @param tid
     */
    Person selectByPrimaryKey(String tid);

    /**
     * 选择性更新数据库记录
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") Person record, @Param("example") PersonCriteria example);

    /**
     * 选择性更新数据库记录
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") Person record, @Param("example") PersonCriteria example);

    /**
     * 根据主键来更新部分数据库记录
     *
     * @param record
     */
    int updateByPrimaryKeySelective(Person record);

    /**
     * 根据主键来更新数据库记录
     *
     * @param record
     */
    int updateByPrimaryKey(Person record);
}