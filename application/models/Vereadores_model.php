<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vereadores_model extends CI_Model
{
	public function get_vereador($vereador_id=NULL)
	{
		$this->db->select('vereador.pk as vereador_id, vereador.nome, vereador.data_nascimento, vereador.naturalidade, vereador.foto, escolaridade.descricao as descricao_escolaridade, estado_civil.descricao as descricao_estado_civil, partido.nome as nome_partido');
		$this->db->from('vereador');
		$this->db->join('escolaridade', 'escolaridade.pk = vereador.fk_escolaridade', 'left');
		$this->db->join('estado_civil', 'estado_civil.pk = vereador.fk_estado_civil', 'left');
		$this->db->join('vereador_has_ano_exercicio', 'vereador_has_ano_exercicio.fk_vereador = vereador.pk', 'left');
		$this->db->join('partido', 'partido.pk = vereador_has_ano_exercicio.fk_partido', 'left');

		if ($vereador_id != NULL):
			$this->db->where('vereador.pk', $vereador_id);
		endif;

		return $this->db->get()->result_array();
	}

	public function get_presenca_vereador($vereador_id)
	{
		$this->db->select('ano_exercicio.ano, ano_exercicio.presenca_total, presenca_vereador.qtd_presencas, presenca_vereador.qtd_faltas');
		$this->db->from('presenca_vereador');
		$this->db->join('ano_exercicio', 'ano_exercicio.pk = presenca_vereador.fk_ano_exercicio', 'left');
		$this->db->where('presenca_vereador.fk_vereador', $vereador_id);
		return $this->db->get()->result_array();
	}

	public function get_estatisticas_vereador($vereador_id, $fk_lei_tipo=NULL, $fk_lei_impacto=NULL)
	{
		$this->db->select('COUNT(lei.pk) as total');
		$this->db->from('lei');
		$this->db->where('lei.fk_vereador', $vereador_id);

		if ($fk_lei_tipo != NULL):
			$this->db->where('lei.fk_lei_tipo', $fk_lei_tipo);
		endif;

		if ($fk_lei_impacto != NULL):
			$this->db->where('lei.fk_impacto', $fk_lei_impacto);
		endif;

		return $this->db->get()->result_array();
	}

	public function get_estatisticas_gerais_vereadores($fk_lei_tipo=NULL, $fk_lei_impacto=NULL, $group_by=FALSE)
	{
		if ($group_by === TRUE):
			$this->db->select('vereador.nome as nome_vereador, COUNT(lei.pk) as total');
		else:
			$this->db->select('COUNT(lei.pk) as total');
		endif;
		$this->db->from('lei');
		$this->db->join('vereador', 'vereador.pk = lei.fk_vereador', 'left');

		if ($fk_lei_tipo != NULL):
			$this->db->where('lei.fk_lei_tipo', $fk_lei_tipo);
		endif;

		if ($fk_lei_impacto != NULL):
			$this->db->where('lei.fk_impacto', $fk_lei_impacto);
		endif;

		if ($group_by === TRUE):
			$this->db->group_by('vereador.pk');
		endif;
		return $this->db->get()->result_array();
	}

}

/* End of file Vereadores_model.php */
/* Location: ./application/models/Vereadores_model.php */