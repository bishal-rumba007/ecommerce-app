import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductInfoContainer extends StatefulWidget {
  const ProductInfoContainer({super.key, this.productHighLight});
  final String? productHighLight;

  @override
  ProductInfoContainerState createState() => ProductInfoContainerState();
}

class ProductInfoContainerState extends State<ProductInfoContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.productHighLight != null)
          Html(
            data: _isExpanded
                ? widget.productHighLight!
                : _truncateHtml(widget.productHighLight!),
            style: {
              "body": Style(
                fontSize: FontSize(14.0),
                fontWeight: FontWeight.normal,
              ),
              "ul": Style(
                padding: HtmlPaddings.only(left: 10.0),
              ),
              "strong": Style(
                fontWeight: FontWeight.bold,
              ),
            },
          ),
        if (widget.productHighLight != null)
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
              child: Text(
                _isExpanded ? 'Read Less' : 'Read More',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
      ],
    );
  }

  String _truncateHtml(String htmlContent) {
    // Truncate the HTML content to a certain length
    const int truncateLength = 400; // Adjust the length as needed
    if (htmlContent.length > truncateLength) {
      return '${htmlContent.substring(0, truncateLength)}...';
    } else {
      return htmlContent;
    }
  }
}
