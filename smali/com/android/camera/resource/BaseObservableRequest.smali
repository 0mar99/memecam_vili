.class public abstract Lcom/android/camera/resource/BaseObservableRequest;
.super Ljava/lang/Object;
.source "BaseObservableRequest.java"

# interfaces
.implements Lcom/android/camera/resource/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/resource/ResponseListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mDisposeCall:Z

.field public mEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mOutPutObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/resource/BaseObservableRequest;->onDisposeCall()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iput-object p2, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    .line 5
    invoke-virtual {p0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public final create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p0, "Cannot create an instance of "

    const-string/jumbo v0, "newInstanceError"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDisposeCall()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mDisposeCall:Z

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_1
    return-void
.end method

.method public onResponseError(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/android/camera/resource/BaseObservableRequest;->mDisposeCall:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p3}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    new-instance p3, Lcom/android/camera/resource/BaseRequestException;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/resource/BaseRequestException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p3}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponseProgress(JJ)V
    .locals 0

    return-void
.end method

.method public abstract scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;-><init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Class;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lio/reactivex/Observable;->onTerminateDetach()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseObservableRequest;->mOutPutObservable:Lio/reactivex/Observable;

    return-object p1
.end method

.method public startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0O0;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0O0;-><init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO00o;-><init>(Lcom/android/camera/resource/BaseObservableRequest;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/reactivex/Observable;->onTerminateDetach()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseObservableRequest;->mOutPutObservable:Lio/reactivex/Observable;

    return-object p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "no null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object p1, p2

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p0

    .line 9
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    .line 10
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_2

    .line 12
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_2
    :goto_4
    throw p0
.end method
