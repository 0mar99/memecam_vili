.class public Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
.source "NormalPanelEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder<",
        "Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

.field public mGestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

.field public mGravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;-><init>(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mGravity:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mGestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)V

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

.method public bridge synthetic setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setGestureListener(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mGestureListener:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$OnGestureListener;

    return-object p0
.end method

.method public setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mGravity:I

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

.method public setVisible(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

    return-object p0
.end method
