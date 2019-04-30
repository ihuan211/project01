
CREATE TABLE `tb_postloan_settle_byc` (
  `tid` VARCHAR(32) NOT NULL,
  `serial_no` VARCHAR(32) DEFAULT NULL,
  `settle_type` VARCHAR(5) DEFAULT NULL COMMENT '结清方式,BEF提前,NOR正常,BYC公司代偿',
  `bef_settle_type` VARCHAR(10) DEFAULT NULL COMMENT '提前结清种类',
  `settle_detail` VARCHAR(2000) DEFAULT NULL COMMENT '不同方式结清详情Json',
  `settle_receivable_amount` DECIMAL(18,2) DEFAULT NULL COMMENT '结清应收合计',
  `settle_receipt_amount` DECIMAL(18,2) DEFAULT NULL COMMENT '结清实收合计',
  `settled_date` DATETIME DEFAULT NULL COMMENT '结清日期-与公司结清日期',
  `zf_settled_date` VARCHAR(32) DEFAULT NULL COMMENT '与资方结清日期',
  `be_release_mortgage` INT(2) DEFAULT NULL COMMENT '解除抵押',
  `settle_release_mortgage` INT(2) DEFAULT NULL COMMENT '结清解除抵押状态',
  `release_mortgage_date` VARCHAR(12) DEFAULT NULL COMMENT '解除抵押日期',
  `be_transfer` INT(2) DEFAULT NULL COMMENT '变更过户',
  `settle_transfer` INT(2) DEFAULT NULL COMMENT '结清变更过户',
  `transfer_date` VARCHAR(12) DEFAULT NULL COMMENT '变更过户日期',
  `settled_status` INT(2) DEFAULT '0' COMMENT '是否结清(0未结清|-1审批中|1已结清)',
  `mortgage_corp_id` VARCHAR(32) DEFAULT NULL COMMENT '按揭公司编号',
  `flow_id` VARCHAR(32) DEFAULT NULL COMMENT '所选审批流程id',
  `flow_name` VARCHAR(100) DEFAULT NULL COMMENT '所选审批流程',
  `audit_flow_item_id` VARCHAR(32) DEFAULT NULL COMMENT '当前审批节点id',
  `audit_flow_item_name` VARCHAR(100) DEFAULT NULL COMMENT '当前审批节点名称',
  `create_by` VARCHAR(32) DEFAULT NULL,
  `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `update_by` VARCHAR(32) DEFAULT NULL,
  `update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` VARCHAR(500) DEFAULT NULL,
  `version` INT(4) DEFAULT '0',
  `state` INT(4) DEFAULT '1',
  `report_photos` VARCHAR(500) DEFAULT NULL COMMENT '代偿报告',
  `approal_photos` VARCHAR(500) DEFAULT NULL COMMENT '资方结清审批表',
  `settle_photos` VARCHAR(500) DEFAULT NULL COMMENT '资方结清函',
  PRIMARY KEY (`tid`),
  KEY `idx_serial_no` (`serial_no`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='代偿结清';

ALTER TABLE `loan_360new`.`tb_postloan_settle`   
  ADD COLUMN `is_settle_bill` INT(4) DEFAULT 0  NULL  COMMENT '是否公司销账' AFTER `bef_receipt_type`,
  ADD COLUMN `is_settle_billcorp` INT(4) DEFAULT 0  NULL  COMMENT '是否银行销账' AFTER `is_settle_bill`;

ALTER TABLE `loan_360new`.`tb_postloan_settle_byc`   
  ADD COLUMN `is_settle_billcorp` INT(4) DEFAULT 0  NULL  COMMENT '是否银行销账' AFTER `settle_photos`;


SELECT * FROM tb_postloan_settle_byc