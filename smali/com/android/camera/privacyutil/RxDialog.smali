.class public Lcom/android/camera/privacyutil/RxDialog;
.super Lio/reactivex/Observable;
.source "RxDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacyutil/RxDialog$Listener;
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
.field public static final TAG:Ljava/lang/String; = "RxDialog"


# instance fields
.field public final mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field public final mOkStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/privacyutil/RxDialog;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iput-object p2, p0, Lcom/android/camera/privacyutil/RxDialog;->mOkStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
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
    new-instance v0, Lcom/android/camera/privacyutil/RxDialog$Listener;

    invoke-direct {v0, p1}, Lcom/android/camera/privacyutil/RxDialog$Listener;-><init>(Lio/reactivex/Observer;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/privacyutil/RxDialog;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/camera/privacyutil/RxDialog;->mOkStr:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
