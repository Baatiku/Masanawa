.class public Lcom/osec/nativelib/HookJavaMethod;
.super Ljava/lang/Object;
.source "HookJavaMethod.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# static fields
.field private static final TAG:Ljava/lang/String; = "HookJavaMethod"


# instance fields
.field public className:Ljava/lang/String;

.field private hooked:I

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
    iput p1, p0, Lcom/osec/nativelib/HookJavaMethod;->index:I

    .line 3
    iput-object p2, p0, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    return-void
.end method

.method public constructor <init>(Lcom/osec/nativelib/JavaMethod;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lcom/osec/nativelib/JavaMethod;->index:I

    .line 9
    iput v0, p0, Lcom/osec/nativelib/HookJavaMethod;->index:I

    .line 10
    iget-object v0, p1, Lcom/osec/nativelib/JavaMethod;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/osec/nativelib/JavaMethod;->methodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lcom/osec/nativelib/JavaMethod;->parameterTypes:[Ljava/lang/Class;

    iput-object p1, p0, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHooked()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getHooked:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/osec/nativelib/HookJavaMethod;->index:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ":"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "HookJavaMethod"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v1, 0x1a

    .line 38
    .line 39
    if-lt v0, v1, :cond_0

    .line 40
    .line 41
    iget v0, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    .line 42
    .line 43
    and-int/lit8 v0, v0, 0x3

    .line 44
    .line 45
    return v0

    .line 46
    :cond_0
    iget v0, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    .line 47
    .line 48
    and-int/lit8 v0, v0, 0x7

    .line 49
    .line 50
    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setHooked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/osec/nativelib/HookJavaMethod;->hooked:I

    .line 2
    .line 3
    return-void
.end method
