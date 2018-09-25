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

30.times do
    Subject.create!(
      name: ["Matematica", "Calculo", "Linguas", "Programação"].sample,
      course_id: Course.all.sample.id
    )
  end

@student = User.create(
  name: "estudante",
  email: "estudante@fatec",
  kind: 0,
  password: "123456",
  password_confirmation: "123456"
)

@monitor = User.create(
  name: "monitor",
  email: "monitor@fatec",
  kind: 1,
  password: "123456",
  password_confirmation: "123456"
)

@admin = User.create(
  name: "admin",
  email: "admin@fatec",
  kind: 2,
  password: "123456",
  password_confirmation: "123456"
)