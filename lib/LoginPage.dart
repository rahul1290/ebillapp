import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Login')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',fit: BoxFit.contain,height: 200,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.account_circle,color: Colors.deepPurple,),
                                    alignLabelWithHint: true,
                                    label: Text('Identity'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  validator: (value){
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.key,color: Colors.deepPurple,),
                                    alignLabelWithHint: true,
                                    label: Text('Password'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  validator: (value){
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 26.0),
                                child: ButtonTheme(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffff0000),
                                        elevation: 6.0,
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10,right: 10),
                                        child: Text('Login'),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )
                  ],
                ),
          ),
        ),
      )
    );
  }
}