import 'package:flutter/material.dart';
import 'package:numerology_app/models/prediction_data.dart';

class PredictionDialog extends StatefulWidget {
  final int rootNumber;
  final int destinyNumber;
  const PredictionDialog({
    super.key,
    required this.rootNumber,
    required this.destinyNumber,
  });

  @override
  State<PredictionDialog> createState() => _PredictionDialogState();
}

class _PredictionDialogState extends State<PredictionDialog> {
   
   bool _showingFirstPrediction = true;

   void _tooglePrediction(){
    setState(() {
      _showingFirstPrediction = !_showingFirstPrediction;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(255, 31, 0, 54),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _showingFirstPrediction? 'Life Path: ${widget.rootNumber}'
              :'Destiny Number: ${widget.destinyNumber}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              _showingFirstPrediction?
              PredictionData.getRootPersonalityTraits(widget.rootNumber):
              PredictionData.getDestinyPurpose(widget.destinyNumber),
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(231, 246, 236, 236),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _showingFirstPrediction ? _tooglePrediction:()=>Navigator.pop(context), child: Text(_showingFirstPrediction ?'Next':'close'),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
