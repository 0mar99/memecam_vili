.class public Lcom/android/camera/privacyutil/RxViewClick;
.super Lio/reactivex/Observable;
.source "RxViewClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacyutil/RxViewClick$ClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RxViewClick"


# instance fields
.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/privacyutil/RxViewClick;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;

    iget-object v1, p0, Lcom/android/camera/privacyutil/RxViewClick;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/privacyutil/RxViewClick$ClickListener;-><init>(Landroid/view/View;Lio/reactivex/Observer;Lcom/android/camera/privacyutil/RxViewClick$1;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/privacyutil/RxViewClick;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
