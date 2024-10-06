import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  QRScannerPageState createState() => QRScannerPageState();
}

class QRScannerPageState extends State<QRScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  bool isScanning = true;
  String errorMessage = '';

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escanear QR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 300,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (result != null)
                    Text('Código escaneado: ${result!.code}')
                  else if (errorMessage.isNotEmpty)
                    Text('Error: $errorMessage', style: TextStyle(color: Colors.red))
                  else
                    const Text('Escanea un código QR'),
                  if (!isScanning)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isScanning = true;
                          errorMessage = '';
                        });
                        controller?.resumeCamera();
                      },
                      child: const Text('Reanudar escaneo'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        isScanning = false;
      });
      controller.pauseCamera();
    }, onError: (error) {
      setState(() {
        errorMessage = error.toString();
        isScanning = false;
      });
    });
  }
}