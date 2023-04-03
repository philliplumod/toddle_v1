import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toddle/models/task.dart';
import 'package:toddle/utilities/colors.dart';

class TaskTile extends StatelessWidget {
  final Task? task;
  const TaskTile(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        //  width: SizeConfig.screenWidth * 0.78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _getBGClr(task?.color ?? 0),
        ),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task?.title ?? "",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: nightColor),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time_rounded,
                        color: nightColor, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      "${task!.startTime} - ${task!.endTime}",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 13, color: nightColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  task?.note ?? "",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 15, color: nightColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 0.5,
              color: nightColor),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              task!.isCompleted == 1 ? "COMPLETED" : "TODO",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: nightColor),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  // _getBGClr(int no) {
  //   switch (no) {
  //     case 0:
  //       return customAccentColor3;
  //     case 1:
  //       return customAccentColor1;
  //     case 2:
  //       return customAccentColor2;
  //     default:
  //       return customAccentColor3;
  //   }
  // }

  _getBGClr(int no) {
    switch (no) {
      case 0:
        return customAccentColor1;
      case 1:
        return customAccentColor2;
      case 2:
        return customAccentColor3;
      default:
        return customAccentColor1;
    }
  }
}
