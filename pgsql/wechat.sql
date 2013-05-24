-- Table: menu

-- DROP TABLE menu;

CREATE TABLE menu
(
  id serial NOT NULL,
  mid integer, -- mid 字段
  menuitem character varying NOT NULL, -- menuitem 字段
  controller character varying, -- 映射控制器
  submenu_id integer, -- 子菜单ID
  status boolean DEFAULT true, -- 启用，禁用状态
  ctime timestamp without time zone DEFAULT now(), -- 创建时间
  mtime timestamp without time zone DEFAULT now(), -- 修改时间
  CONSTRAINT id PRIMARY KEY (id),
  CONSTRAINT submenu_id FOREIGN KEY (submenu_id)
      REFERENCES menu (mid) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT mid UNIQUE (mid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE menu
  OWNER TO dba;
COMMENT ON TABLE menu
  IS 'menu table';
COMMENT ON COLUMN menu.mid IS 'mid 字段';
COMMENT ON COLUMN menu.menuitem IS 'menuitem 字段';
COMMENT ON COLUMN menu.controller IS '映射控制器';
COMMENT ON COLUMN menu.submenu_id IS '子菜单ID';
COMMENT ON COLUMN menu.status IS '启用，禁用状态';
COMMENT ON COLUMN menu.ctime IS '创建时间';
COMMENT ON COLUMN menu.mtime IS '修改时间';