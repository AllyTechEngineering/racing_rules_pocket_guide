import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/utilities/calculate_button_size_class.dart';

import '../utilities/responsive_adaptive_class.dart';

class DefinitionScreen extends StatefulWidget {
  const DefinitionScreen({super.key});

  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  final CalculateButtonSizeClass calculateButtonSizeClass = CalculateButtonSizeClass();
  double elevatedButtonWidth = 0.0;
  double elevatedButtonHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    elevatedButtonWidth = calculateButtonSizeClass.calculateButtonWidth(context, 1);
    elevatedButtonHeight = calculateButtonSizeClass.calculateButtonHeight(context, 0.75);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
            ),
            onPressed: () => context.pop(),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                // color: Colors.white,
              ),
              onPressed: () => context.go('/settings_screen'),
            ),
          ],
          centerTitle: true,
          title: Text(
            'Definitions',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ocean_background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 1.0,
                image: AssetImage('assets/images/ocean_background.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text:
                              'Abandon A race that a race committee or protest committee abandons is void but may be resailed.\n\nClear Astern and Clear Ahead; Overlap One boat is clear astern of another when her hull and equipment in normal position are behind a line abeam from the aftermost point of the other boat’s hull and equipment in normal position. The other boat is clear ahead. They overlap when neither is clear astern. However, they also overlap when a boat between them overlaps both. These terms always apply to boats on the same tack. They apply to boats on opposite tacks only when rule 18 applies between them or when both boats are sailing more than ninety degrees from the true wind.\n\nConflict of Interest	A person has a conflict of interest if he\n(a)	may gain or lose as a result of a decision to which he contributes,\n(b)	may reasonably appear to have a personal or financial interest which could affect his ability to be impartial, or\n(c)	has a close personal interest in a decision.\n\nFetching	A boat is fetching a mark when she is in a position to pass to windward of it and leave it on the required side without changing tack.\n\nFinish A boat finishes when, after starting, any part of her hull crosses the finishing line from the course side. However, she has not finished if after crossing the finishing line she\n(a)	takes a penalty under rule 44.2,\n(b)	corrects an error in sailing the course made at the line, or\n(c)	continues to sail the course.\n\nKeep Clear	A boat keeps clear of a right-of-way boat\n(a)	if the right-of-way boat can sail her course with no need to take avoiding action and,\n(b)	when the boats are overlapped, if the right-of-way boat can also change course in both directions without immediately making contact.\n\nLeeward and Windward A boat’s leeward side is the side that is or, when she is head to wind, was away from the wind. However, when sailing by the lee or directly downwind, her leeward side is the side on which her mainsail lies. The other side is her windward side. When two boats on the same tack overlap, the one on the leeward side of the other is the leeward boat. The other is the windward boat.\n\nMark  An object the sailing instructions require a boat to leave on a specified side, a race committee vessel surrounded by navigable water from which the starting or finishing line extends, and an object intentionally attached to the object or vessel. However, an anchor line is not part of the mark.\n\nMark-Room  Room for a boat to leave a mark on the required side. Also,\n(a)	room to sail to the mark when her proper course is to sail close to it, and\n(b)	room to round or pass the mark as necessary to sail the course without touching the mark.\nHowever, mark-room for a boat does not include room to tack unless she is overlapped inside and to windward of the boat required to give mark-room and she would be fetching the mark after her tack.\n\nObstruction An object that a boat could not pass without changing course substantially, if she were sailing directly towards it and one of her hull lengths from it. An object that can be safely passed on only one side and an object, area or line so designated by the sailing instructions are also obstructions. However, a boat racing is not an obstruction to other boats unless they are required to keep clear of her or, if rule 22 applies, avoid her. A vessel under way, including a boat racing, is never a continuing obstruction.\nOverlap  See Clear Astern and Clear Ahead; Overlap.\n\nParty  A party to a hearing is\n(a)	for a protest hearing: a protestor, a protestee;\n(b)	for a redress hearing: a boat requesting redress or for which redress is requested; a boat for which a hearing is called to consider redress under rule 60.3(b); a race committee acting under rule 60.2(b); a technical committee acting under rule 60.4(b);\n(c)	for a redress hearing under rule 62.1(a): the body alleged to have made an improper action or omission;\n(d)	a person against whom an allegation of a breach of rule 69.1(a) is made; a person presenting an allegation under rule 69.2(e)(1);\n(e)	a support person subject to a hearing under rule 60.3(d) or 69; any boat that person supports; a person appointed to present an allegation under rule 60.3(d).\nHowever, the protest committee is never a party.\n\nPostpone	A postponed race is delayed before its scheduled start but may be started or abandoned later.\n\nProper Course A course a boat would choose in order to sail the course and finish as soon as possible in the absence of the other boats referred to in the rule using the term. A boat has no proper course before her starting signal.\n\nProtest An allegation made under rule 61.2 by a boat, a race committee, a technical committee or a protest committee that a boat has broken a rule.\n\nRacing A boat is racing from her preparatory signal until she finishes and clears the finishing line and marks or retires, or until the race committee signals a general recall, postponement or abandonment.\n\nRoom The space a boat needs in the existing conditions, including space to comply with her obligations under the rules of Part 2 and rule 31, while manoeuvring promptly in a seamanlike way.\n\nRule\n(a)	The rules in this book, including the Definitions, Race Signals, Introduction, preambles and the rules of relevant appendices, but not titles;\n(b)	World Sailing Regulations that have been designated by World Sailing as having the status of a rule and are published on the World Sailing website;\n(c)	the prescriptions of the national authority, unless they are changed by the notice of race or sailing instructions in compliance with the national authority’s prescription, if any, to rule 88.2;\n(d)	the class rules (for a boat racing under a handicap or rating system, the rules of that system are ‘class rules’);\n(e)	the notice of race;\n(f)	the sailing instructions; and\n(g)	any other documents that govern the event.\n\nSail the Course A boat sails the course provided that a string representing her track from the time she begins to approach the starting line from its pre- start side to start until she finishes, when drawn taut,\n(a)	passes each mark of the course for the race on the required side and in the correct order,\n(b)	touches each mark designated in the sailing instructions to be a rounding mark, and\n(c)	passes between the marks of a gate from the direction of the course from the previous mark.\n\nStart A boat starts when, her hull having been entirely on the pre-start side of the starting line at or after her starting signal, and having complied with rule 30.1 if it applies, any part of her hull crosses the starting line from the pre-start side to the course side.\n\nSupport Person  Any person who\n(a)	provides, or may provide, physical or advisory support to a competitor, including any coach, trainer, manager, team staff, medic, paramedic or any other person working with, treating or assisting a competitor in or preparing for the competition, or\n(b)	is the parent or guardian of a competitor.\n\nTack, Starboard or Port A boat is on the tack, starboard or port, corresponding to her windward side.\n\nWindward  See Leeward and Windward.\n\nZone The area around a mark within a distance of three hull lengths of the boat nearer to it. A boat is in the zone when any part of her hull is in the zone.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
