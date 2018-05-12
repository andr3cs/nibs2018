<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_ca extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('vereadores_model');
		$this->load->library('rest');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('', '');
	}

	public function index()
	{
		echo "Welcome to Camara Aberta! :)";
	}

	public function vereador()
	{
		$this->_allow_get_only();

		$vereador_id = $this->input->get('id');

		if ($vereador_id != NULL):
			$this->form_validation->set_data($_GET);
			$this->form_validation->set_rules('id', 'ID', 'trim|required|is_natural_no_zero');

			if ($this->form_validation->run() == TRUE):
				// dados
				$vereadores['dados'] = $this->vereadores_model->get_vereador($vereador_id);
				// estatisticas
				$vereadores['estatisticas']['num_projetos_alto'] = $this->vereadores_model->get_estatisticas_vereador($vereador_id, 1, 2);
				$vereadores['estatisticas']['num_projetos_baixo'] = $this->vereadores_model->get_estatisticas_vereador($vereador_id, 1, 1);
				$vereadores['estatisticas']['num_leis_alto'] = $this->vereadores_model->get_estatisticas_vereador($vereador_id, 2, 2);
				$vereadores['estatisticas']['num_leis_baixo'] = $this->vereadores_model->get_estatisticas_vereador($vereador_id, 2, 1);
				// presenca
				$vereadores['presenca'] = $this->vereadores_model->get_presenca_vereador($vereador_id);
			else:
				$response['message'] = validation_errors();
				$this->_response(Rest::HTTP_NOT_ACCEPTABLE, $response);
			endif;
		else:
			$vereadores = $this->vereadores_model->get_vereador();
		endif;

		if ($vereadores != NULL):
			$response['data'] = $vereadores;
			$this->_response(Rest::HTTP_OK, $response);
		else:
			$response['message'] = "Nenhum vereador foi encontrado. :(";
			$this->_response(Rest::HTTP_NO_CONTENT, $response);
		endif;
	}

	public function estatisticas_vereadores()
	{
		$this->_allow_get_only();

		$vereadores['estatisticas']['num_projetos'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(1, NULL, TRUE);
		$vereadores['estatisticas']['num_leis'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(2, NULL, TRUE);

		$vereadores['estatisticas']['num_projetos_alto'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(1, 2);
		$vereadores['estatisticas']['num_projetos_baixo'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(1, 1);

		$vereadores['estatisticas']['num_leis_alto'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(2, 2);
		$vereadores['estatisticas']['num_leis_baixo'] = $this->vereadores_model->get_estatisticas_gerais_vereadores(2, 1);

		if ($vereadores != NULL):
			$response['data'] = $vereadores;
			$this->_response(Rest::HTTP_OK, $response);
		else:
			$response['message'] = "Nenhum vereador foi encontrado. :(";
			$this->_response(Rest::HTTP_NO_CONTENT, $response);
		endif;

	}

	private function _allow_get_only()
	{
		if ($this->input->method() != 'get'):
			$response['message'] = 'Ação não definida. Leia o manual da API ou entre em contato com o suporte.';
			$this->_response(Rest::HTTP_METHOD_NOT_ALLOWED, $response);
		endif;
	}

	private function _response($status, $response=NULL)
	{
		$this->output->set_content_type('application/json');
		$this->output->set_status_header($status);
		$this->output->set_output(json_encode($response, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
		$this->output->_display();
		exit();
	}

}

/* End of file Vereadores.php */
/* Location: ./application/controllers/Vereadores.php */