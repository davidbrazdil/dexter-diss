.class public Lcom/virsir/android/chinamobile10086/news/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/virsir/android/chinamobile10086/d;


# instance fields
.field a:Lcom/virsir/android/chinamobile10086/utils/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/virsir/android/chinamobile10086/utils/b;)V
    .registers 2
    .parameter "client"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/d;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    return-void
.end method

.method public constructor <init>(Lcom/virsir/android/chinamobile10086/utils/b;Ljava/lang/String;)V
    .registers 3
    .parameter "client"
    .parameter "url"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/d;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    iput-object p2, p0, Lcom/virsir/android/chinamobile10086/news/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "nd"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .local v3, nl:Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_9

    move-object v6, v7

    :goto_8
    return-object v6

    :cond_9
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .local v4, node:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, children:Lorg/w3c/dom/NodeList;
    if-nez v0, :cond_16

    move-object v6, v7

    goto :goto_8

    :cond_16
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .local v2, n:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v2           #n:Lorg/w3c/dom/Node;
    :cond_34
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    const-string v0, "Mozilla/5.0(Windows; U; Windows NT 5.2; rv:1.9.2) Gecko/20100101 Firefox/3.6"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 23
    .parameter "result"

    .prologue
    const/4 v14, 0x0

    .local v14, news:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .local v7, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .local v6, doc:Lorg/w3c/dom/Document;
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    const/16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const-string v19, "\\.(6)"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v19, Ljava/io/ByteArrayInputStream;

    const-string v20, "GBK"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .local v17, root:Lorg/w3c/dom/Element;
    const-string v19, "item"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .local v16, nodeList:Lorg/w3c/dom/NodeList;
    if-eqz v16, :cond_96

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4d} :catch_9a
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4d} :catch_a4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4d} :catch_ae

    .end local v14           #news:Ljava/util/List;
    .local v15, news:Ljava/util/List;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4e
    :try_start_4e
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_95

    move-object/from16 v0, v16

    move v1, v10

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .local v13, nd:Lorg/w3c/dom/Element;
    const-string v19, "title"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/virsir/android/chinamobile10086/news/d;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, title:Ljava/lang/String;
    const-string v19, "link"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/virsir/android/chinamobile10086/news/d;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, link:Ljava/lang/String;
    const-string v19, "description"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/virsir/android/chinamobile10086/news/d;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, desc:Ljava/lang/String;
    new-instance v11, Lcom/virsir/android/chinamobile10086/b/d;

    const-string v19, ""

    move-object v0, v11

    move-object/from16 v1, v18

    move-object v2, v12

    move-object/from16 v3, v19

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/virsir/android/chinamobile10086/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v11, item:Lcom/virsir/android/chinamobile10086/b/d;
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_4e .. :try_end_92} :catchall_bd
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_92} :catch_ca
    .catch Lorg/xml/sax/SAXException; {:try_start_4e .. :try_end_92} :catch_c5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4e .. :try_end_92} :catch_c0

    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .end local v5           #desc:Ljava/lang/String;
    .end local v11           #item:Lcom/virsir/android/chinamobile10086/b/d;
    .end local v12           #link:Ljava/lang/String;
    .end local v13           #nd:Lorg/w3c/dom/Element;
    .end local v18           #title:Ljava/lang/String;
    :cond_95
    move-object v14, v15

    .end local v10           #i:I
    .end local v15           #news:Ljava/util/List;
    .restart local v14       #news:Ljava/util/List;
    :cond_96
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .end local v16           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v17           #root:Lorg/w3c/dom/Element;
    :goto_99
    return-object v14

    :catch_9a
    move-exception v19

    move-object/from16 v9, v19

    .local v9, e:Ljava/io/IOException;
    :goto_9d
    :try_start_9d
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_99

    .end local v9           #e:Ljava/io/IOException;
    :catch_a4
    move-exception v19

    move-object/from16 v9, v19

    .local v9, e:Lorg/xml/sax/SAXException;
    :goto_a7
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_99

    .end local v9           #e:Lorg/xml/sax/SAXException;
    :catch_ae
    move-exception v19

    move-object/from16 v9, v19

    .local v9, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_b1
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_9d .. :try_end_b4} :catchall_b8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_99

    .end local v9           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_b8
    move-exception v19

    :goto_b9
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    throw v19

    .end local v14           #news:Ljava/util/List;
    .restart local v10       #i:I
    .restart local v15       #news:Ljava/util/List;
    .restart local v16       #nodeList:Lorg/w3c/dom/NodeList;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    :catchall_bd
    move-exception v19

    move-object v14, v15

    .end local v15           #news:Ljava/util/List;
    .restart local v14       #news:Ljava/util/List;
    goto :goto_b9

    .end local v14           #news:Ljava/util/List;
    .restart local v15       #news:Ljava/util/List;
    :catch_c0
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15           #news:Ljava/util/List;
    .restart local v14       #news:Ljava/util/List;
    goto :goto_b1

    .end local v14           #news:Ljava/util/List;
    .restart local v15       #news:Ljava/util/List;
    :catch_c5
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15           #news:Ljava/util/List;
    .restart local v14       #news:Ljava/util/List;
    goto :goto_a7

    .end local v14           #news:Ljava/util/List;
    .restart local v15       #news:Ljava/util/List;
    :catch_ca
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15           #news:Ljava/util/List;
    .restart local v14       #news:Ljava/util/List;
    goto :goto_9d
.end method

.method public a()[Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .local v2, news:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/d;->b:Ljava/lang/String;

    .local v5, url:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, headers:Ljava/util/Map;
    const-string v6, "User-Agent"

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/d;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    const-string v7, "GBK"

    invoke-virtual {v6, v5, v1, v7}, Lcom/virsir/android/chinamobile10086/utils/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    :try_start_1c
    invoke-virtual {p0, v4}, Lcom/virsir/android/chinamobile10086/news/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v2, v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_33

    :cond_24
    :goto_24
    if-nez v2, :cond_28

    const/4 v6, 0x0

    :goto_27
    return-object v6

    :cond_28
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .local v3, objects:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v6, 0x1

    aput-object v2, v3, v6

    move-object v6, v3

    goto :goto_27

    .end local v3           #objects:[Ljava/lang/Object;
    :catch_33
    move-exception v6

    goto :goto_24
.end method
