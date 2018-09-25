@fatec = Institution.create(
  name: "Fatec"
)

["Análise e Desenvolvimento de sistemas", "Têxtil e Moda", "Produção Têxtil", "Segurança da Informação",
  "Jogos Digitais", "Logística", "Gestão Empresarial"].each do |course|
  Course.create(
    name: course,
    institution_id: @fatec.id
  )
end

