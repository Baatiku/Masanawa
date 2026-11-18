.class public Lcom/opay/face/common/view/ProgressSeekBar$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/view/ProgressSeekBar;->e(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/face/common/view/ProgressSeekBar$b;

.field public final synthetic b:Lcom/opay/face/common/view/ProgressSeekBar;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/view/ProgressSeekBar;Lcom/opay/face/common/view/ProgressSeekBar$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar$a;->b:Lcom/opay/face/common/view/ProgressSeekBar;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/face/common/view/ProgressSeekBar$a;->a:Lcom/opay/face/common/view/ProgressSeekBar$b;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar$a;->a:Lcom/opay/face/common/view/ProgressSeekBar$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/opay/face/common/view/ProgressSeekBar$b;->onComplete()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
