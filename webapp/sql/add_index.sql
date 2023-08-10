CREATE INDEX idx_player_score
ON player_score (tenant_id, competition_id, row_num DESC);
