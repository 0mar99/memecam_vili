.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$8;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$8;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelect(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$8;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$1400(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->setSelectedPage(I)V

    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 0

    return-void
.end method
