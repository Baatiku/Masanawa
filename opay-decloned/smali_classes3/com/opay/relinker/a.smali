.class public Lcom/opay/relinker/a;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/relinker/a$a;,
        Lcom/opay/relinker/a$b;,
        Lcom/opay/relinker/a$d;,
        Lcom/opay/relinker/a$c;
    }
.end annotation


# direct methods
.method public static a(Lcom/opay/relinker/a$d;)Lcom/opay/relinker/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/relinker/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/relinker/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/opay/relinker/b;->i(Lcom/opay/relinker/a$d;)Lcom/opay/relinker/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
