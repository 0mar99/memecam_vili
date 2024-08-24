.class public final Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.source "CustomViewEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;,
        Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;,
        Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    }
.end annotation


# static fields
.field public static final BEAUTY_MODE:I = 0x2

.field public static final BOKEH_LENS:I = 0x1

.field public static final CV_LENS:I = 0x3


# instance fields
.field public mCustomView:I

.field public mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

.field public mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mCustomView:I

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->access$200(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    return-void
.end method


# virtual methods
.method public getCustomView()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mCustomView:I

    return p0
.end method

.method public getShowGuideListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    return-object p0
.end method

.method public getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method
