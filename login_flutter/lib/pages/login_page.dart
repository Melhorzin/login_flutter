import 'package:flutter/material.dart';
import 'package:login_flutter/components/my_button.dart';
import 'package:login_flutter/components/my_textfield.dart';
import 'package:login_flutter/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // texto edite controles
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // login usuario
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // login incial
              Text(
                'Faça seu login!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // nome
              MyTextField(
                controller: usernameController,
                hintText: 'Nome de Usuario',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // senha
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Esqueceu sua senha?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Login botão
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // Ou continue com
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Faça login com:',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple login botões
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/imagens/logotipogoogle.jpg'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/imagens/logotipoapple.jpg')
                ],
              ),

              const SizedBox(height: 50),

              // Não é registrado? /registre aqui
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não é registrado?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Registre aqui',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
