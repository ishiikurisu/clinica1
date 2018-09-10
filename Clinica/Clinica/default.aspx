﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Clinica._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h4 class="mb-3">Ficha de Cadastro</h4>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Dados Pessoais</h5>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="cpf">CPF:</label>
                            </div>

                            <div class="col-4">
                                <input type="tel" class="form-control" id="cpf" name="cpf"
                                    placeholder="000.000.000-00"
                                    pattern="[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}" required />
                            </div>
                            <div class="col-4">
                                <a href="#" name="procurar" class="btn btn-primary btn-block" value="Cadastrar" id="cpfSearch">Procurar</a>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="nome">Nome:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="name" required />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="dtNascimento">Data de Nascimento:</label>
                            </div>
                            <div class="col-4">
                                <input type="tel" class="form-control" id="dtNascimento" name="dtNascimento"
                                    placeholder="dd/mm/aaaa"
                                    pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" required />
                            </div>
                            <div class="col-4">
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="sexo">Sexo:</label>
                            </div>
                            <div class="d-block my-3 col-4">
                                <div class="custom-control custom-radio">
                                    <input id="m" name="sexo" type="radio" value="m" class="custom-control-input" checked="" required="" />
                                    <label class="custom-control-label" for="m">Masculino</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" name="sexo" value="f" id="f" class="custom-control-input" required="" />
                                    <label class="custom-control-label" for="f">Feminino</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="profissao">Profissão:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="profissao" required /><br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <h5 class="card-title">Telefone</h5>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-6">
                                <label for="telFixo">Fixo:</label>
                            </div>
                            <div class="col-6">
                                <label for="telCelular">Celular:</label>
                            </div>
                            <div class="col">
                                <input type="tel" class="form-control" id="telFixo" name="fixo"
                                    placeholder="(61) 1234-4567"
                                    pattern="\([0-9]{2}\) [0-9]{4}-[0-9]{4}"
                                    required />
                            </div>
                            <div class="col">
                            </div>
                            <div class="col">
                                <input type="tel" class="form-control" id="telCelular" name="celular"
                                    placeholder="(61) 91234-4567"
                                    pattern="\([0-9]{2}\) 9[7-9]{1}[0-9]{3}-[0-9]{4}" />
                            </div>
                            <div class="col">
                            </div>
                            <span class="validity"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-6">
                                <h5 class="card-title">Endereço</h5>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="phone">CEP:</label>
                            </div>
                            <div class="col">
                                <input type="tel" id="cep" name="cep"
                                    placeholder="70000-000" class="form-control"
                                    pattern="[0-9]{5}-[0-9]{3}" />
                            </div>
                            <div class="col">
                                <%-- TODO Adicioar botão de busca por CEP --%>
                            </div>
                            <span class="validity"></span>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="estado">Estado:</label>
                            </div>
                            <div class="col-8">
                                <select name="estado" class="form-control form-control-sm" required>
                                    <option value="">Selecione o Estado</option>
                                    <option value="ac">Acre</option>
                                    <option value="al">Alagoas</option>
                                    <option value="am">Amazonas</option>
                                    <option value="ap">Amapá</option>
                                    <option value="ba">Bahia</option>
                                    <option value="ce">Ceará</option>
                                    <option value="df">Distrito Federal</option>
                                    <option value="es">Espírito Santo</option>
                                    <option value="go">Goiás</option>
                                    <option value="ma">Maranhão</option>
                                    <option value="mt">Mato Grosso</option>
                                    <option value="ms">Mato Grosso do Sul</option>
                                    <option value="mg">Minas Gerais</option>
                                    <option value="pa">Pará</option>
                                    <option value="pb">Paraíba</option>
                                    <option value="pr">Paraná</option>
                                    <option value="pe">Pernambuco</option>
                                    <option value="pi">Piauí</option>
                                    <option value="rj">Rio de Janeiro</option>
                                    <option value="rn">Rio Grande do Norte</option>
                                    <option value="ro">Rondônia</option>
                                    <option value="rs">Rio Grande do Sul</option>
                                    <option value="rr">Roraima</option>
                                    <option value="sc">Santa Catarina</option>
                                    <option value="se">Sergipe</option>
                                    <option value="sp">São Paulo</option>
                                    <option value="to">Tocantins</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="cidade">Cidade:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="cidade" required />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="logradouro">Logradouro:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="logradouro" />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="numEndereco">Número:</label>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" name="numEndereco" required />
                            </div>
                            <div class="col">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Dados Médicos</h5>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="planoDeSaude">Plano de Saúde:</label>
                            </div>
                            <div class="col-8">
                                <select name="planoDeSaude" class="form-control" required>
                                    <option value="particular">Particular</option>
                                    <option value="interlife">Interlife</option>
                                    <option value="amil">Amil</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="altura">Altura:</label>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" name="altura" />
                            </div>
                            <div class="col">cm</div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col">
                                <label for="peso">Peso:</label>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" name="peso" />
                            </div>
                            <div class="col">kg</div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="alergias">Alergias:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="alergia" />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="medicamento">Medicamento:</label>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" name="medicamento" />
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="tipoSanguineo">Tipo Sanguíneo:</label>
                            </div>
                            <div class="d-block my-3 col-4">
                                <!-- <div class="col-4"> -->
                                <div class="custom-control custom-radio">
                                    <input id="a" name="abo" type="radio" value="a" class="custom-control-input" checked="" required="" />
                                    <label class="custom-control-label" for="a">A</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="b" name="abo" type="radio" value="b" class="custom-control-input" required="" />
                                    <label class="custom-control-label" for="b">B</label>
                                </div>

                           
                                <div class="custom-control custom-radio">
                                    <input id="ab" name="abo" type="radio" value="ab" class="custom-control-input" required="" />
                                    <label class="custom-control-label" for="ab">AB</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="o" name="abo" type="radio" value="o" class="custom-control-input" required="" />
                                    <label class="custom-control-label" for="o">O</label>
                                </div>

                                <!--  </div> -->
                               
                            </div>
                        </div>
                    </div>

                    
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-4">
                                <label for="tipoSanguineo">Fator Rh:</label>
                            </div>
                            <div class="d-block my-3 col-4">
                                        <div class="custom-control custom-radio">
                                        <input id="positivo" name="rh" type="radio" value="positivo" class="custom-control-input" checked="" required="" />
                                        <label class="custom-control-label" for="positivo">+</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input id="negativo" name="rh" type="radio" value="negativo" class="custom-control-input" required="" />
                                        <label class="custom-control-label" for="negativo">-</label>
                                    </div>

                                </div>
                            </div>
                        </div>
                       
                </div>
        </div>




        </div>
            </div>
            <button name="enviar" class="btn btn-primary btn-lg btn-block" value="Cadastrar" id="form-submit">Cadastrar</button>
        </div>
    </form>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validar.js"></script>
    <script src="js/buscarCPF.js"></script>
    <script src="js/main.js" type="text/javascript"></script>
</body>
</html>
