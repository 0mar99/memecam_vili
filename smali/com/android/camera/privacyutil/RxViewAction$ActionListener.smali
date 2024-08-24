.class public final Lcom/android/camera/privacyutil/RxViewAction$ActionListener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "RxViewAction.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/privacyutil/RxViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionListener"
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
    iput-object p1, p0, Lcom/android/camera/privacyutil/RxViewAction$ActionListener;->view:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/android/camera/privacyutil/RxViewAction$ActionListener;->mObserver:Lio/reactivex/Observer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lio/reactivex/Observer;Lcom/android/camera/privacyutil/RxViewAction$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/privacyutil/RxViewAction$ActionListener;-><init>(Landroid/view/View;Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 2

    const-string v0, "RxViewAction"

    const-string/jumbo v1, "onDispose: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/privacyutil/RxViewAction$ActionListener;->view:Landroid/view/View;

    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEditorAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RxViewAction"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/privacyutil/RxViewAction$ActionListener;->mObserver:Lio/reactivex/Observer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
