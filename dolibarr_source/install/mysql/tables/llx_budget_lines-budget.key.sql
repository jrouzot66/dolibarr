


















ALTER TABLE llx_budget_lines ADD UNIQUE INDEX uk_budget_lines (fk_budget, fk_project_ids);





ALTER TABLE llx_budget_lines ADD CONSTRAINT fk_budget_lines_budget FOREIGN KEY (fk_budget) REFERENCES llx_budget (rowid);
