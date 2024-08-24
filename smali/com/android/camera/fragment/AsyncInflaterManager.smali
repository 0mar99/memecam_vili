.class public Lcom/android/camera/fragment/AsyncInflaterManager;
.super Ljava/lang/Object;
.source "AsyncInflaterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;,
        Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;
    }
.end annotation


# instance fields
.field public mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public mInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

.field public mInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;

.field public mViewStubInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

.field public mViewStubListener:Landroid/view/ViewStub$OnInflateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;

    .line 10
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    .line 11
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 12
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/AsyncInflaterManager$1;-><init>(Lcom/android/camera/fragment/AsyncInflaterManager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 13
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/AsyncInflaterManager$2;-><init>(Lcom/android/camera/fragment/AsyncInflaterManager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubListener:Landroid/view/ViewStub$OnInflateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/AsyncInflaterManager$1;-><init>(Lcom/android/camera/fragment/AsyncInflaterManager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/AsyncInflaterManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/AsyncInflaterManager$2;-><init>(Lcom/android/camera/fragment/AsyncInflaterManager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubListener:Landroid/view/ViewStub$OnInflateListener;

    .line 7
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/AsyncInflaterManager;)Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/AsyncInflaterManager;)Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    return-object p0
.end method


# virtual methods
.method public asyncInflater(Landroid/view/ViewGroup;ILcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$InflaterListener;

    .line 2
    iget-object p3, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mAsyncInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object p0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    invoke-virtual {p3, p2, p1, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public viewStubAsyncInflate(Landroid/view/ViewStub;Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubInflateListener:Lcom/android/camera/fragment/AsyncInflaterManager$ViewStubInflateListener;

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/AsyncInflaterManager;->mViewStubListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 3
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0O0;

    invoke-direct {p2, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0O0;-><init>(Landroid/view/ViewStub;)V

    invoke-virtual {p0, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
