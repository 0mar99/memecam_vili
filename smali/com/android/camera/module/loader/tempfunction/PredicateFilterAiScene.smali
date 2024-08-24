.class public Lcom/android/camera/module/loader/tempfunction/PredicateFilterAiScene;
.super Ljava/lang/Object;
.source "PredicateFilterAiScene.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PredicateFilterAiScene"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/tempfunction/PredicateFilterAiScene;->test(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
