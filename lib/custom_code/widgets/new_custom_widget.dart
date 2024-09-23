// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dugout/auth/firebase_auth/auth_util.dart';
import 'package:dugout/flutter_flow/flutter_flow_expanded_image_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/flutter_flow/custom_functions.dart';

class EachPostWidget extends StatelessWidget {
  final PostRecord listViewPostRecord;

  const EachPostWidget({
    Key? key,
    required this.listViewPostRecord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 8),
      child: StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(listViewPostRecord.postUser!),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          final eachPostUsersRecord = snapshot.data!;
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            eachPostUsersRecord.photoUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          listViewPostRecord.boardName,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                      ].divide(const SizedBox(width: 8)),
                    ),
                    Text(
                      dateTimeFormat(
                          "relative", listViewPostRecord.timePosted!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF575757),
                            fontSize: 12,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Text(
                  listViewPostRecord.postDescription,
                  textAlign: TextAlign.start,
                  maxLines: 40,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              if (listViewPostRecord.postPhoto.length == 1)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Builder(
                    builder: (context) {
                      final singleImage = listViewPostRecord.postPhoto.toList();
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(singleImage.length,
                              (singleImageIndex) {
                            final singleImageItem =
                                singleImage[singleImageIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        singleImageItem,
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: singleImageItem,
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: singleImageItem,
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    singleImageItem,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
              if (listViewPostRecord.postPhoto.length >= 2)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Builder(
                    builder: (context) {
                      final multiImages = listViewPostRecord.postPhoto.toList();
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(multiImages.length,
                              (multiImagesIndex) {
                            final multiImagesItem =
                                multiImages[multiImagesIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        multiImagesItem,
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: multiImagesItem,
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: multiImagesItem,
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    multiImagesItem,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }).divide(const SizedBox(width: 4)),
                        ),
                      );
                    },
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!listViewPostRecord.likes
                            .contains(currentUserReference))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await listViewPostRecord.reference.update({
                                'likes': FieldValue.arrayUnion(
                                    [currentUserReference]),
                              });
                            },
                            child: const Icon(
                              Icons.favorite_border,
                              color: Color(0xFF7C7C83),
                              size: 20,
                            ),
                          ),
                        if (listViewPostRecord.likes
                            .contains(currentUserReference))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await listViewPostRecord.reference.update({
                                'likes': FieldValue.arrayRemove(
                                    [currentUserReference]),
                              });
                            },
                            child: const Icon(
                              Icons.favorite,
                              color: Color(0xFFDB1F1F),
                              size: 20,
                            ),
                          ),
                        Text(
                          listViewPostRecord.likes.length.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF7C7C83),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(width: 4)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.comment,
                          color: Color(0xFF7C7C83),
                          size: 20,
                        ),
                        Text(
                          listViewPostRecord.numComments.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF7C7C83),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(width: 4)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.send,
                          color: Color(0xFF7C7C83),
                          size: 20,
                        ),
                        Text(
                          listViewPostRecord.numShares.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF7C7C83),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(width: 4)),
                    ),
                  ].divide(const SizedBox(width: 16)),
                ),
              ),
              const Divider(
                thickness: 0.1,
                color: Color(0xFFC9C9C9),
              ),
            ].divide(const SizedBox(height: 8)),
          );
        },
      ),
    );
  }
}
