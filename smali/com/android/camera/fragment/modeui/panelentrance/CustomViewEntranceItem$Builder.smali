.class public Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
.source "CustomViewEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder<",
        "Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public mCustomView:I

.field public mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

.field public mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;-><init>(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return-object p0
.end method

.method public bridge synthetic setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setResult(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setResult(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setShowGuideListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mShowGuideListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$ShowGuideListener;

    return-object p0
.end method

.method public bridge synthetic setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSupportedCallback(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setSupportedCallback(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method
