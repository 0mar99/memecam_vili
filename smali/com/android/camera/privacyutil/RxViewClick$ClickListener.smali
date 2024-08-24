.class public final Lcom/android/camera/privacyutil/RxViewClick$ClickListener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "RxViewClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/privacyutil/RxViewClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickListener"
.end annotation


# instance fields
.field public final mObserver:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;->view:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;->mObserver:Lio/reactivex/Observer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lio/reactivex/Observer;Lcom/android/camera/privacyutil/RxViewClick$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;-><init>(Landroid/view/View;Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "RxViewClick"

    const-string/jumbo v0, "onClick DetectButton"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;->mObserver:Lio/reactivex/Observer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onDispose()V
    .locals 2

    const-string v0, "RxViewClick"

    const-string/jumbo v1, "onDispose: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
