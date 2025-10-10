import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'responding_to_so_s_model.dart';
export 'responding_to_so_s_model.dart';

/// Create a page named ActiveResponsePage with a dark background.
///
/// At the top of the page, create a Card. Inside this card, display the
/// victim's circular Image, their Name in bold Text, and two smaller Text
/// widgets below for "ETA: 7 mins" and "Distance: 2.1 km".
///
/// In the center of the page, add a large, prominent Button that spans most
/// of the screen width. The button's text must be "Start Navigation in Google
/// Maps".
///
/// Below this main navigation button, create a Row containing three Icon
/// Buttons for quick actions:
///
/// A phone icon for "Call Victim".
///
/// A shield icon for "Call Authorities".
///
/// A red cancel icon for "End Response".
class RespondingToSoSWidget extends StatefulWidget {
  const RespondingToSoSWidget({super.key});

  static String routeName = 'RespondingToSoS';
  static String routePath = '/respondingToSoS';

  @override
  State<RespondingToSoSWidget> createState() => _RespondingToSoSWidgetState();
}

class _RespondingToSoSWidgetState extends State<RespondingToSoSWidget> {
  late RespondingToSoSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RespondingToSoSModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1A1A1A),
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1A1A),
          automaticallyImplyLeading: false,
          title: Text(
            'Active Response',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color(0xFF404040),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF007ACC),
                                width: 3.0,
                              ),
                            ),
                            child: Container(
                              width: 74.0,
                              height: 74.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1735230167639-e108d050fff6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjAwNTcwMTF8&ixlib=rb-4.1.0&q=80&w=1080',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sarah Johnson',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'ETA: 8 minutes',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFFB0B0B0),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Text(
                                    'Distance: 2.3 miles',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFFB0B0B0),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    currentUserLocationValue = await getCurrentUserLocation(
                        defaultLocation: LatLng(0.0, 0.0));
                    await launchMap(
                      mapType: $ml.MapType.google,
                      location: currentUserLocationValue,
                      title: '',
                    );

                    await launchURL(
                        'https://www.google.com/maps/dir/?api=1&destination=28.6562,77.2410');
                  },
                  text: 'Start Navigation in Google Maps',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF007ACC),
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await launchUrl(Uri(
                              scheme: 'tel',
                              path: valueOrDefault<String>(
                                random_data
                                    .randomInteger(8287413763, 8387413763)
                                    .toString(),
                                '8287413763',
                              ),
                            ));
                          },
                          child: Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF333333),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF505050),
                                width: 1.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 28.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Call Victim',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFB0B0B0),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(SOSRespondWidget.routeName);
                          },
                          child: Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDC3545),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFFF4757),
                                width: 1.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 28.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'End Response',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFDC3545),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(width: 20.0)),
                ),
              ]
                  .divide(SizedBox(height: 32.0))
                  .addToStart(SizedBox(height: 24.0))
                  .addToEnd(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
