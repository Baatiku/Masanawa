.class public Lcom/osec/nativelib/JavaMethod;
.super Ljava/lang/Object;
.source "JavaMethod.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field public className:Ljava/lang/String;

.field public index:I

.field public methodName:Ljava/lang/String;

.field public parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/osec/nativelib/JavaMethod;->index:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/osec/nativelib/JavaMethod;->className:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/osec/nativelib/JavaMethod;->methodName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/osec/nativelib/JavaMethod;->parameterTypes:[Ljava/lang/Class;

    .line 11
    .line 12
    return-void
.end method
