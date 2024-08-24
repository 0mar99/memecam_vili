.class public interface abstract Lcom/android/camera/videoplayer/player_messages/Message;
.super Ljava/lang/Object;
.source "Message.java"


# virtual methods
.method public abstract messageFinished()V
.end method

.method public abstract polledFromQueue()V
.end method

.method public abstract runMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
