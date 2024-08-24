.class public Lcom/android/camera/data/data/runing/ComponentRunningDocument;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningDocument.java"


# static fields
.field public static final DOCUMENT_BLACK_WHITE:Ljava/lang/String; = "bin"

.field public static final DOCUMENT_ORIGIN:Ljava/lang/String; = "raw"

.field public static final DOCUMENT_STRENGTHEN:Ljava/lang/String; = "color"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "raw"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v4, 0x7f120367

    const v5, 0x7f12004d

    const-string/jumbo v6, "raw"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const v12, 0x7f120363

    const v13, 0x7f12004c

    const-string v14, "bin"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v4, -0x1

    const v5, 0x7f120368

    const v6, 0x7f12004e

    const-string v7, "color"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_document_mode_value_key"

    return-object p0
.end method

.method public reInit(IIZ)V
    .locals 0

    return-void
.end method
