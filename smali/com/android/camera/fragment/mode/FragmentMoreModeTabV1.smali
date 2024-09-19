.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV1.java"

# interfaces
.implements Lcom/android/camera/fragment/mode/IMoreMode;


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModeTabV1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1$1;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getCountPerLine()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;Landroid/content/Context;IIZ)V

    return-object v6
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/mode/ModeItemDecoration;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getType()I

    move-result p0

    invoke-direct {v0, p1, p2, p0}, Lcom/android/camera/fragment/mode/ModeItemDecoration;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    return-object v0
.end method

.method public getCountPerLine()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/display/Display;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    const p0, 0x7f0a02cf

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modeDownloading(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modeShouldDownload(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
