# state_provider

Como utiliza o pacote provider para gerenciar o estado. 
A aplicação apresenta um texto que alterna ao pressionar um botão.

Como Funciona
TextModel: Classe que estende ChangeNotifier e mantém o estado do texto e sua cor.

Provider: Utiliza-se ChangeNotifierProvider para fornecer a instância de TextModel para a aplicação.

setState: Não é utilizado diretamente; em vez disso, notifyListeners é chamado para atualizar a UI.
